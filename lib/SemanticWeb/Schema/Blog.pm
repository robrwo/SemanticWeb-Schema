use utf8;

package SemanticWeb::Schema::Blog;

# ABSTRACT: A blog.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Blog';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A blog.




=head1 ATTRIBUTES


=head2 C<blog_post>

C<blogPost>

A posting that is part of this blog.


A blog_post should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BlogPosting']>

=back

=cut

has blog_post => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'blogPost',
);


=head2 C<blog_posts>

C<blogPosts>

The postings that are part of this blog.


A blog_posts should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BlogPosting']>

=back

=cut

has blog_posts => (
    is        => 'rw',
    predicate => 1,
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

=cut

has issn => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'issn',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
