use utf8;

package SemanticWeb::Schema::Oncologic;

# ABSTRACT: A specific branch of medical science that deals with benign and malignant tumors

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Oncologic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that deals with benign and malignant
tumors, including the study of their development, diagnosis, treatment and
prevention.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
