package SemanticWeb::Schema::Class;

# ABSTRACT: A class

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Class';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A class, also often called a 'Type'; equivalent to rdfs:Class.




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




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
