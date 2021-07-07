use utf8;

package SemanticWeb::Schema::SocialMediaPosting;

# ABSTRACT: A post to a social media platform

use Moo;

extends qw/ SemanticWeb::Schema::Article /;


use MooX::JSON_LD 'SocialMediaPosting';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

A post to a social media platform, including blog posts, tweets, Facebook
posts, etc.




=head1 ATTRIBUTES


=head2 C<shared_content>

C<sharedContent>

A CreativeWork such as an image, video, or audio clip shared as part of
this posting.


A shared_content should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_shared_content>

A predicate for the L</shared_content> attribute.

=cut

has shared_content => (
    is        => 'rw',
    predicate => '_has_shared_content',
    json_ld   => 'sharedContent',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Article>

=cut

1;
