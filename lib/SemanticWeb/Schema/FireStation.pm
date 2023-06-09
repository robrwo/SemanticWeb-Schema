use utf8;

package SemanticWeb::Schema::FireStation;

# ABSTRACT: A fire station. With firemen.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::EmergencyService /;


use MooX::JSON_LD 'FireStation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A fire station. With firemen.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EmergencyService>

=cut

1;
