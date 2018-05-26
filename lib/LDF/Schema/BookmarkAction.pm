package LDF::Schema::BookmarkAction;

# ABSTRACT: An agent bookmarks/flags/labels/tags/marks an object.

use Moo;

extends qw/ LDF::Schema::OrganizeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An agent bookmarks/flags/labels/tags/marks an object.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BookmarkAction' }



=head1 SEE ALSO



L<LDF::Schema::OrganizeAction>

=cut

1;
