use utf8;

package SemanticWeb::Schema::requiredCollateral;

# ABSTRACT: Assets required to secure loan or credit repayments

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'requiredCollateral';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Assets required to secure loan or credit repayments. It may take form of
third party pledge, goods, financial instruments (cash, securities, etc.)




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
