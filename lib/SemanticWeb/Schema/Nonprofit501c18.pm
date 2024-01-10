use utf8;

package SemanticWeb::Schema::Nonprofit501c18;

# ABSTRACT: Nonprofit501c18: Non-profit type referring to Employee Funded Pension Trust (created before 25 June 1959).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c18';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c18: Non-profit type referring to Employee Funded Pension Trust
(created before 25 June 1959).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
