use utf8;

package SemanticWeb::Schema::URL;

# ABSTRACT: Data type: URL.

use Moo;

extends qw/ SemanticWeb::Schema::Text /;


use MooX::JSON_LD 'URL';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.2';

=encoding utf8

=head1 DESCRIPTION

Data type: URL.




=head1 ATTRIBUTES


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PhysicalActivityCategory']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_category>

A predicate for the L</category> attribute.

=cut

has category => (
    is        => 'rw',
    predicate => '_has_category',
    json_ld   => 'category',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Text>

=cut

1;
