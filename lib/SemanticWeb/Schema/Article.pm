use utf8;

package SemanticWeb::Schema::Article;

# ABSTRACT: An article

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Article';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.5';

=encoding utf8

=head1 DESCRIPTION

=begin html

An article, such as a news article or piece of investigative report.
Newspapers and magazines have articles of many different types and this is
intended to cover them all.<br/><br/> See also <a
href="http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html">blog post</a>.

=end html




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
    json_ld   => 'articleBody',
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
    json_ld   => 'articleSection',
);


=head2 C<page_end>

C<pageEnd>

The page on which the work ends; for example "138" or "xvi".


A page_end should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has page_end => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pageEnd',
);


=head2 C<page_start>

C<pageStart>

The page on which the work starts; for example "135" or "xiii".


A page_start should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has page_start => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pageStart',
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
    json_ld   => 'pagination',
);


=head2 C<word_count>

C<wordCount>

The number of words in the text of the Article.


A word_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has word_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'wordCount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
