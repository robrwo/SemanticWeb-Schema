use utf8;

package SemanticWeb::Schema::MedicalWebPage;

# ABSTRACT: A web page that provides medical information.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'MedicalWebPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A web page that provides medical information.




=head1 ATTRIBUTES


=head2 C<aspect>



An aspect of medical practice that is considered on the page, such as
'diagnosis', 'treatment', 'causes', 'prognosis', 'etiology',
'epidemiology', etc.


A aspect should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_aspect>

A predicate for the L</aspect> attribute.

=cut

has aspect => (
    is        => 'rw',
    predicate => '_has_aspect',
    json_ld   => 'aspect',
);


=head2 C<medical_audience>

C<medicalAudience>

Medical audience for page.


A medical_audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalAudience']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalAudienceType']>

=back

=head2 C<_has_medical_audience>

A predicate for the L</medical_audience> attribute.

=cut

has medical_audience => (
    is        => 'rw',
    predicate => '_has_medical_audience',
    json_ld   => 'medicalAudience',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
