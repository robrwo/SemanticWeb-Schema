use utf8;

package SemanticWeb::Schema::Emergency;

# ABSTRACT: A specific branch of medical science that deals with the evaluation and initial treatment of medical conditions caused by trauma or sudden illness.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Emergency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that deals with the evaluation and
initial treatment of medical conditions caused by trauma or sudden illness.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
