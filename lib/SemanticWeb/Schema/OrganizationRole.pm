use utf8;

package SemanticWeb::Schema::OrganizationRole;

# ABSTRACT: A subclass of Role used to describe roles within organizations.

use Moo;

extends qw/ SemanticWeb::Schema::Role /;


use MooX::JSON_LD 'OrganizationRole';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

A subclass of Role used to describe roles within organizations.




=head1 ATTRIBUTES


=head2 C<numbered_position>

C<numberedPosition>

A number associated with a role in an organization, for example, the number
on an athlete's jersey.


A numbered_position should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_numbered_position>

A predicate for the L</numbered_position> attribute.

=cut

has numbered_position => (
    is        => 'rw',
    predicate => '_has_numbered_position',
    json_ld   => 'numberedPosition',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Role>

=cut

1;
