package SemanticWeb::Schema::Property;

# ABSTRACT: A property

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A property, used to indicate attributes and relationships of some Thing;
equivalent to rdf:Property.




=head1 ATTRIBUTES


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'category',
    json_ld_serializer => \&_serialize_category,
);

sub _serialize_category { $_[0]->_serializer('category') }


=head2 C<domain_includes>

C<domainIncludes>

Relates a property to a class that is (one of) the type(s) the property is
expected to be used on.


A domain_includes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Class']>

=back

=cut

has domain_includes => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'domainIncludes',
    json_ld_serializer => \&_serialize_domain_includes,
);

sub _serialize_domain_includes { $_[0]->_serializer('domain_includes') }


=head2 C<inverse_of>

C<inverseOf>

Relates a property to a property that is its inverse. Inverse properties
relate the same pairs of items to each other, but in reversed direction.
For example, the 'alumni' and 'alumniOf' properties are inverseOf each
other. Some properties don't have explicit inverses; in these situations
RDFa and JSON-LD syntax for reverse properties can be used.


A inverse_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Property']>

=back

=cut

has inverse_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'inverseOf',
    json_ld_serializer => \&_serialize_inverse_of,
);

sub _serialize_inverse_of { $_[0]->_serializer('inverse_of') }


=head2 C<range_includes>

C<rangeIncludes>

Relates a property to a class that constitutes (one of) the expected
type(s) for values of the property.


A range_includes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Class']>

=back

=cut

has range_includes => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'rangeIncludes',
    json_ld_serializer => \&_serialize_range_includes,
);

sub _serialize_range_includes { $_[0]->_serializer('range_includes') }


=head2 C<superseded_by>

C<supersededBy>

Relates a term (i.e. a property, class or enumeration) to one that
supersedes it.


A superseded_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Enumeration']>

=item C<InstanceOf['SemanticWeb::Schema::Property']>

=item C<InstanceOf['SemanticWeb::Schema::Class']>

=back

=cut

has superseded_by => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'supersededBy',
    json_ld_serializer => \&_serialize_superseded_by,
);

sub _serialize_superseded_by { $_[0]->_serializer('superseded_by') }




around json_ld_type => sub { return 'Property' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'category' => \&_serialize_category,
       'domainIncludes' => \&_serialize_domain_includes,
       'inverseOf' => \&_serialize_inverse_of,
       'rangeIncludes' => \&_serialize_range_includes,
       'supersededBy' => \&_serialize_superseded_by,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
