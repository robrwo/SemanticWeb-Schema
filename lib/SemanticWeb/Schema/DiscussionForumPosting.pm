package SemanticWeb::Schema::DiscussionForumPosting;

# ABSTRACT: A posting to a discussion forum.

use Moo;

extends qw/ SemanticWeb::Schema::SocialMediaPosting /;


use MooX::JSON_LD 'DiscussionForumPosting';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A posting to a discussion forum.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SocialMediaPosting>

=cut

1;
