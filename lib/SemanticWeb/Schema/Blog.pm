use utf8;

package SemanticWeb::Schema::Blog;

# ABSTRACT: A [blog](https://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Blog';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A L<blog|https://en.wikipedia.org/wiki/Blog>, sometimes known as a "weblog". Note that the individual posts (L<SemanticWeb::Schema::BlogPosting>s) in a L<SemanticWeb::Schema::Blog> are often colloquially referred to by the same term.



=head1 ATTRIBUTES


=head2 C<blog_post>

C<blogPost>

A posting that is part of this blog.


A blog_post should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BlogPosting']>

=back

=head2 C<_has_blog_post>

A predicate for the L</blog_post> attribute.

=cut

has blog_post => (
    is        => 'rw',
    predicate => '_has_blog_post',
    json_ld   => 'blogPost',
);


=head2 C<blog_posts>

C<blogPosts>

Indicates a post that is part of a L<SemanticWeb::Schema::Blog>. Note that historically, what we term a "Blog" was once known as a "weblog", and that what we term a "BlogPosting" is now often colloquially referred to as a "blog".

A blog_posts should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BlogPosting']>

=back

=head2 C<_has_blog_posts>

A predicate for the L</blog_posts> attribute.

=cut

has blog_posts => (
    is        => 'rw',
    predicate => '_has_blog_posts',
    json_ld   => 'blogPosts',
);


=head2 C<issn>



The International Standard Serial Number (ISSN) that identifies this serial
publication. You can repeat this property to identify different formats of,
or the linking ISSN (ISSN-L) for, this serial publication.


A issn should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_issn>

A predicate for the L</issn> attribute.

=cut

has issn => (
    is        => 'rw',
    predicate => '_has_issn',
    json_ld   => 'issn',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
