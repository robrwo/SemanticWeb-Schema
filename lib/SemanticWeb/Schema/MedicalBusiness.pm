use utf8;

package SemanticWeb::Schema::MedicalBusiness;

# ABSTRACT: A particular physical or virtual business of an organization for medical purposes

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'MedicalBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

A particular physical or virtual business of an organization for medical
purposes. Examples of MedicalBusiness include differents business run by
health professionals.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
