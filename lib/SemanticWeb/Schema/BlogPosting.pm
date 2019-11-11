use utf8;

package SemanticWeb::Schema::BlogPosting;

# ABSTRACT: A blog post.

use Moo;

extends qw/ SemanticWeb::Schema::SocialMediaPosting /;


use MooX::JSON_LD 'BlogPosting';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A blog post.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SocialMediaPosting>

=cut

1;
