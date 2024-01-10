use utf8;

package SemanticWeb::Schema::prescriptionStatus;

# ABSTRACT: Indicates the status of drug prescription, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'prescriptionStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the status of drug prescription, e.g. local catalogs
classifications or whether the drug is available by prescription or
over-the-counter, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
