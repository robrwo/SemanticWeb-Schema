package LDF::Schema::NewsArticle;

# ABSTRACT: A NewsArticle is an article whose content reports news

use Moo;

extends qw/ LDF::Schema::Article /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A NewsArticle is an article whose content reports news, or provides
background context and supporting materials for understanding the news.</p>
<p>A more detailed overview of <a href="/docs/news.html">schema.org News
markup</a> is also available.

=end html




=head1 ATTRIBUTES


=head2 C<dateline>



=begin html

A <a href="https://en.wikipedia.org/wiki/Dateline">dateline</a> is a brief
piece of text included in news articles that describes where and when the
story was written or filed though the date is often omitted. Sometimes only
a placename is provided.

=end html


A dateline should be one of the following types:

=over

=item C<Str>

=back

=cut

has dateline => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<print_column>

C<printColumn>

The number of the column in which the NewsArticle appears in the print
edition.


A print_column should be one of the following types:

=over

=item C<Str>

=back

=cut

has print_column => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<print_edition>

C<printEdition>

The edition of the print product in which the NewsArticle appears.


A print_edition should be one of the following types:

=over

=item C<Str>

=back

=cut

has print_edition => (
    is        => 'rw',
    predicate => 1,
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

=cut

has print_page => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<print_section>

C<printSection>

If this NewsArticle appears in print, this field indicates the print
section in which the article appeared.


A print_section should be one of the following types:

=over

=item C<Str>

=back

=cut

has print_section => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'NewsArticle' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { dateline => 'dateline' },
      { printColumn => 'print_column' },
      { printEdition => 'print_edition' },
      { printPage => 'print_page' },
      { printSection => 'print_section' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Article>

=cut

1;
