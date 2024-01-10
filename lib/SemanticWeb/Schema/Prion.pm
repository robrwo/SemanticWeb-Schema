use utf8;

package SemanticWeb::Schema::Prion;

# ABSTRACT: A prion is an infectious agent composed of protein in a misfolded form.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Prion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A prion is an infectious agent composed of protein in a misfolded form.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
