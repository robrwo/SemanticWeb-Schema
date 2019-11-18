use utf8;

package SemanticWeb::Schema::CommunicateAction;

# ABSTRACT: The act of conveying information to another person via a communication medium (instrument) such as speech

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'CommunicateAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of conveying information to another person via a communication
medium (instrument) such as speech, email, or telephone conversation.




=head1 ATTRIBUTES


=head2 C<about>



The subject matter of the content.


A about should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has about => (
    is        => 'rw',
    predicate => '_has_about',
    json_ld   => 'about',
);


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

=cut

has in_language => (
    is        => 'rw',
    predicate => '_has_in_language',
    json_ld   => 'inLanguage',
);


=head2 C<language>



A sub property of instrument. The language used on this action.


A language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=back

=cut

has language => (
    is        => 'rw',
    predicate => '_has_language',
    json_ld   => 'language',
);


=head2 C<recipient>



A sub property of participant. The participant who is at the receiving end
of the action.


A recipient should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has recipient => (
    is        => 'rw',
    predicate => '_has_recipient',
    json_ld   => 'recipient',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
