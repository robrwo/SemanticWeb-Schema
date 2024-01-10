use utf8;

package SemanticWeb::Schema::acrissCode;

# ABSTRACT: The ACRISS Car Classification Code is a code used by many car rental companies

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'acrissCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The ACRISS Car Classification Code is a code used by many car rental
companies, for classifying vehicles. ACRISS stands for Association of Car
Rental Industry Systems and Standards.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
