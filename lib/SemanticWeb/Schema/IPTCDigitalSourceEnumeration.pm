use utf8;

package SemanticWeb::Schema::IPTCDigitalSourceEnumeration;

# ABSTRACT:  IPTC "Digital Source" codes for use with the [[digitalSourceType]] property

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MediaEnumeration /;


use MooX::JSON_LD 'IPTCDigitalSourceEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p><a href="https://www.iptc.org/">IPTC</a> "Digital Source" codes for use
with the [[digitalSourceType]] property, providing information about the
source for a digital media object. In general these codes are not declared
here to be mutually exclusive, although some combinations would be
contradictory if applied simultaneously, or might be considered mutually
incompatible by upstream maintainers of the definitions. See the IPTC <a
href="https://www.iptc.org/std/photometadata/documentation/userguide/">docu
mentation</a> for <a
href="https://cv.iptc.org/newscodes/digitalsourcetype/">detailed
definitions</a> of all terms.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MediaEnumeration>

=cut

1;
