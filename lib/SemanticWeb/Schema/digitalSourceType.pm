use utf8;

package SemanticWeb::Schema::digitalSourceType;

# ABSTRACT: Indicates an IPTCDigitalSourceEnumeration code indicating the nature of the digital source(s) for some [[CreativeWork]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'digitalSourceType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates an IPTCDigitalSourceEnumeration code indicating the nature of the digital source(s) for some L<SemanticWeb::Schema::CreativeWork>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
