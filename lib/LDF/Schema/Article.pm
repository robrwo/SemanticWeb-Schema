package LDF::Schema::Article;

# ABSTRACT: An article

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

An article, such as a news article or piece of investigative report.
Newspapers and magazines have articles of many different types and this is
intended to cover them all.</p> <p>See also <a
href="http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html">blog post</a>.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<article_body>

C<articleBody>

The actual body of the article.


A article_body should be one of the following types:

=over

=item C<Str>

=back

=cut

has article_body => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<article_section>

C<articleSection>

Articles may belong to one or more 'sections' in a magazine or newspaper,
such as Sports, Lifestyle, etc.


A article_section should be one of the following types:

=over

=item C<Str>

=back

=cut

has article_section => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<page_end>

C<pageEnd>

The page on which the work ends; for example "138" or "xvi".


A page_end should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has page_end => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<page_start>

C<pageStart>

The page on which the work starts; for example "135" or "xiii".


A page_start should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=item C<Str>

=back

=cut

has page_start => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<pagination>



Any description of pages that is not separated into pageStart and pageEnd;
for example, "1-6, 9, 55" or "10-12, 46-49".


A pagination should be one of the following types:

=over

=item C<Str>

=back

=cut

has pagination => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<word_count>

C<wordCount>

The number of words in the text of the Article.


A word_count should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has word_count => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Article' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { articleBody => 'article_body' },
      { articleSection => 'article_section' },
      { pageEnd => 'page_end' },
      { pageStart => 'page_start' },
      { pagination => 'pagination' },
      { wordCount => 'word_count' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
