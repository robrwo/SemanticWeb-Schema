package SemanticWeb::Schema::Property;

# ABSTRACT: A property

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use curry;
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
);


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
);


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
);


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
);


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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Property' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'category' => $self->curry::_serializer('category'),
       'domainIncludes' => $self->curry::_serializer('domain_includes'),
       'inverseOf' => $self->curry::_serializer('inverse_of'),
       'rangeIncludes' => $self->curry::_serializer('range_includes'),
       'supersededBy' => $self->curry::_serializer('superseded_by'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
