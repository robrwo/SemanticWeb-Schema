use utf8;

package SemanticWeb::Schema::usNPI;

# ABSTRACT: A National Provider Identifier (NPI) is a unique 10-digit identification number issued to health care providers in the United States by the Centers for Medicare and Medicaid Services.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'usNPI';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A <a
href="https://en.wikipedia.org/wiki/National_Provider_Identifier">National
Provider Identifier</a> (NPI) is a unique 10-digit identification number
issued to health care providers in the United States by the Centers for
Medicare and Medicaid Services.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
