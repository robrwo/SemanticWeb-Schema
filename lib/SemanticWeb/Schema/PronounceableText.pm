use utf8;

package SemanticWeb::Schema::PronounceableText;

# ABSTRACT: Data type: PronounceableText.

use Moo;

extends qw/ SemanticWeb::Schema::Text /;


use MooX::JSON_LD 'PronounceableText';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

Data type: PronounceableText.




=head1 ATTRIBUTES


=head2 C<in_language>

C<inLanguage>

The language of the content or performance or used in an action. Please use one of the language codes from the L<IETF BCP 47 standard|http://tools.ietf.org/html/bcp47>. See also [[availableLanguage]].

A in_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=head2 C<_has_in_language>

A predicate for the L</in_language> attribute.

=cut

has in_language => (
    is        => 'rw',
    predicate => '_has_in_language',
    json_ld   => 'inLanguage',
);


=head2 C<phonetic_text>

C<phoneticText>

Representation of a text [[textValue]] using the specified [[speechToTextMarkup]]. For example the city name of Houston in IPA: /ËhjuËstÉn/.

A phonetic_text should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_phonetic_text>

A predicate for the L</phonetic_text> attribute.

=cut

has phonetic_text => (
    is        => 'rw',
    predicate => '_has_phonetic_text',
    json_ld   => 'phoneticText',
);


=head2 C<speech_to_text_markup>

C<speechToTextMarkup>

Form of markup used. eg. [SSML](https://www.w3.org/TR/speech-synthesis11)
or [IPA](https://www.wikidata.org/wiki/Property:P898).


A speech_to_text_markup should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_speech_to_text_markup>

A predicate for the L</speech_to_text_markup> attribute.

=cut

has speech_to_text_markup => (
    is        => 'rw',
    predicate => '_has_speech_to_text_markup',
    json_ld   => 'speechToTextMarkup',
);


=head2 C<text_value>

C<textValue>

Text value being annotated.


A text_value should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_text_value>

A predicate for the L</text_value> attribute.

=cut

has text_value => (
    is        => 'rw',
    predicate => '_has_text_value',
    json_ld   => 'textValue',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Text>

=cut

1;
