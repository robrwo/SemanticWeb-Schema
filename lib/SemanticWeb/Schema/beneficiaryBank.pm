use utf8;

package SemanticWeb::Schema::beneficiaryBank;

# ABSTRACT: A bank or bank’s branch

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'beneficiaryBank';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A bank or bank’s branch, financial institution or international financial
institution operating the beneficiary’s bank account or releasing funds for
the beneficiary.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
