use utf8;

package SemanticWeb::Schema::Article;

# ABSTRACT: An article

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Article';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

An article, such as a news article or piece of investigative report.
Newspapers and magazines have articles of many different types and this is
intended to cover them all. See also [blog
post](http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html).




=head1 ATTRIBUTES


=head2 C<article_body>

C<articleBody>

The actual body of the article.


A article_body should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_article_body>

A predicate for the L</article_body> attribute.

=cut

has article_body => (
    is        => 'rw',
    predicate => '_has_article_body',
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

=head2 C<_has_article_section>

A predicate for the L</article_section> attribute.

=cut

has article_section => (
    is        => 'rw',
    predicate => '_has_article_section',
    json_ld   => 'articleSection',
);


=head2 C<backstory>



For an L<SemanticWeb::Schema::Article>, typically a L<SemanticWeb::Schema::NewsArticle>, the backstory property provides a textual summary giving a brief explanation of why and how an article was created. In a journalistic setting this could include information about reporting process, methods, interviews, data sources, etc.

A backstory should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_backstory>

A predicate for the L</backstory> attribute.

=cut

has backstory => (
    is        => 'rw',
    predicate => '_has_backstory',
    json_ld   => 'backstory',
);


=head2 C<page_end>

C<pageEnd>

The page on which the work ends; for example "138" or "xvi".


A page_end should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_page_end>

A predicate for the L</page_end> attribute.

=cut

has page_end => (
    is        => 'rw',
    predicate => '_has_page_end',
    json_ld   => 'pageEnd',
);


=head2 C<page_start>

C<pageStart>

The page on which the work starts; for example "135" or "xiii".


A page_start should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_page_start>

A predicate for the L</page_start> attribute.

=cut

has page_start => (
    is        => 'rw',
    predicate => '_has_page_start',
    json_ld   => 'pageStart',
);


=head2 C<pagination>



Any description of pages that is not separated into pageStart and pageEnd;
for example, "1-6, 9, 55" or "10-12, 46-49".


A pagination should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_pagination>

A predicate for the L</pagination> attribute.

=cut

has pagination => (
    is        => 'rw',
    predicate => '_has_pagination',
    json_ld   => 'pagination',
);


=head2 C<speakable>



Indicates sections of a Web page that are particularly 'speakable' in the sense of being highlighted as being especially appropriate for text-to-speech conversion. Other sections of a page may also be usefully spoken in particular circumstances; the 'speakable' property serves to indicate the parts most likely to be generally useful for speech.

The I<speakable> property can be repeated an arbitrary number of times, with three kinds of possible 'content-locator' values:

1.) I<id-value> URL references - uses I<id-value> of an element in the page being annotated. The simplest use of I<speakable> has (potentially relative) URL values, referencing identified sections of the document concerned.

2.) CSS Selectors - addresses content in the annotated page, e.g. via class attribute. Use the [[cssSelector]] property.

3.)  XPaths - addresses content via XPaths (assuming an XML view of the content). Use the [[xpath]] property.

For more sophisticated markup of speakable sections beyond simple ID references, either CSS selectors or XPath expressions to pick out document section(s) as speakable. For this
we define a supporting type, L<SemanticWeb::Schema::SpeakableSpecification>  which is defined to be a possible value of the I<speakable> property.

A speakable should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SpeakableSpecification']>

=item C<Str>

=back

=head2 C<_has_speakable>

A predicate for the L</speakable> attribute.

=cut

has speakable => (
    is        => 'rw',
    predicate => '_has_speakable',
    json_ld   => 'speakable',
);


=head2 C<word_count>

C<wordCount>

The number of words in the text of the Article.


A word_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_word_count>

A predicate for the L</word_count> attribute.

=cut

has word_count => (
    is        => 'rw',
    predicate => '_has_word_count',
    json_ld   => 'wordCount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
