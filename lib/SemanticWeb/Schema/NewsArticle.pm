use utf8;

package SemanticWeb::Schema::NewsArticle;

# ABSTRACT: A NewsArticle is an article whose content reports news

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Article /;


use MooX::JSON_LD 'NewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A NewsArticle is an article whose content reports news, or provides
background context and supporting materials for understanding the news. A
more detailed overview of [schema.org News markup](/docs/news.html) is also
available. 




=head1 ATTRIBUTES


=head2 C<dateline>



A L<dateline|https://en.wikipedia.org/wiki/Dateline> is a brief piece of text included in news articles that describes where and when the story was written or filed though the date is often omitted. Sometimes only a placename is provided.

Structured representations of dateline-related information can also be expressed more explicitly using [[locationCreated]] (which represents where a work was created, e.g. where a news report was written).  For location depicted or described in the content, use [[contentLocation]].

Dateline summaries are oriented more towards human readers than towards automated processing, and can vary substantially. Some examples: "BEIRUT, Lebanon, June 2.", "Paris, France", "December 19, 2017 11:43AM Reporting from Washington", "Beijing/Moscow", "QUEZON CITY, Philippines".

A dateline should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_dateline>

A predicate for the L</dateline> attribute.

=cut

has dateline => (
    is        => 'rw',
    predicate => '_has_dateline',
    json_ld   => 'dateline',
);


=head2 C<print_column>

C<printColumn>

The number of the column in which the NewsArticle appears in the print
edition.


A print_column should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_print_column>

A predicate for the L</print_column> attribute.

=cut

has print_column => (
    is        => 'rw',
    predicate => '_has_print_column',
    json_ld   => 'printColumn',
);


=head2 C<print_edition>

C<printEdition>

The edition of the print product in which the NewsArticle appears.


A print_edition should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_print_edition>

A predicate for the L</print_edition> attribute.

=cut

has print_edition => (
    is        => 'rw',
    predicate => '_has_print_edition',
    json_ld   => 'printEdition',
);


=head2 C<print_page>

C<printPage>

If this NewsArticle appears in print, this field indicates the name of the
page on which the article is found. Please note that this field is intended
for the exact page name (e.g. A5, B18).


A print_page should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_print_page>

A predicate for the L</print_page> attribute.

=cut

has print_page => (
    is        => 'rw',
    predicate => '_has_print_page',
    json_ld   => 'printPage',
);


=head2 C<print_section>

C<printSection>

If this NewsArticle appears in print, this field indicates the print
section in which the article appeared.


A print_section should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_print_section>

A predicate for the L</print_section> attribute.

=cut

has print_section => (
    is        => 'rw',
    predicate => '_has_print_section',
    json_ld   => 'printSection',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Article>

=cut

1;
