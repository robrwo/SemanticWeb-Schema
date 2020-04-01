use utf8;

package SemanticWeb::Schema::PronounceableText;

# ABSTRACT: Data type: PronounceableText.

use Moo;

extends qw/ SemanticWeb::Schema::Text /;


use MooX::JSON_LD 'PronounceableText';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.2';

=encoding utf8

=head1 DESCRIPTION

Data type: PronounceableText.




=head1 ATTRIBUTES


=head2 C<in_language>

C<inLanguage>

=begin html

<p>The language of the content or performance or used in an action. Please
use one of the language codes from the <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard</a>. See also
<a class="localLink"
href="http://schema.org/availableLanguage">availableLanguage</a>.<p>

=end html


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

=begin html

<p>Representation of a text <a class="localLink"
href="http://schema.org/textValue">textValue</a> using the specified <a
class="localLink"
href="http://schema.org/speechToTextMarkup">speechToTextMarkup</a>. For
example the city name of Houston in IPA: /ËhjuËstÉn/.<p>

=end html


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

=begin html

<p>Form of markup used. eg. <a
href="https://www.w3.org/TR/speech-synthesis11">SSML</a> or <a
href="https://www.wikidata.org/wiki/Property:P898">IPA</a>.<p>

=end html


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
