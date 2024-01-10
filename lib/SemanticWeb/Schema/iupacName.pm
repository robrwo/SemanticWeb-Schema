use utf8;

package SemanticWeb::Schema::iupacName;

# ABSTRACT: Systematic method of naming chemical compounds as recommended by the International Union of Pure and Applied Chemistry (IUPAC).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'iupacName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Systematic method of naming chemical compounds as recommended by the
International Union of Pure and Applied Chemistry (IUPAC).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
