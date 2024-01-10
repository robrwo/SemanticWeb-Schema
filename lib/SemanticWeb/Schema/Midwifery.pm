use utf8;

package SemanticWeb::Schema::Midwifery;

# ABSTRACT: A nurse-like health profession that deals with pregnancy

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Midwifery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A nurse-like health profession that deals with pregnancy, childbirth, and
the postpartum period (including care of the newborn), besides sexual and
reproductive health of women throughout their lives.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
