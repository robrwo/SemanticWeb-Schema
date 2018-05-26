package LDF::Schema::Blog;

# ABSTRACT: A blog.

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A blog.




=head1 ATTRIBUTES


=head2 C<blog_post>

C<blogPost>

A posting that is part of this blog.


A blog_post should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::BlogPosting']>

=back

=cut

has blog_post => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<blog_posts>

C<blogPosts>

The postings that are part of this blog.


A blog_posts should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::BlogPosting']>

=back

=cut

has blog_posts => (
    is        => 'rw',
    predicate => 1,
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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Blog' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { blogPost => 'blog_post' },
      { blogPosts => 'blog_posts' },
      { issn => 'issn' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
