use utf8;

package SemanticWeb::Schema::DiscussionForumPosting;

# ABSTRACT: A posting to a discussion forum.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::SocialMediaPosting /;


use MooX::JSON_LD 'DiscussionForumPosting';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

A posting to a discussion forum.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SocialMediaPosting>

=cut

1;
