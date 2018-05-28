package SemanticWeb::Schema::DiscussionForumPosting;

# ABSTRACT: A posting to a discussion forum.

use Moo;

extends qw/ SemanticWeb::Schema::SocialMediaPosting /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A posting to a discussion forum.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DiscussionForumPosting' }



=head1 SEE ALSO



L<SemanticWeb::Schema::SocialMediaPosting>

=cut

1;
