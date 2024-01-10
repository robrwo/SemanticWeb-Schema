use utf8;

package SemanticWeb::Schema::financialAidEligible;

# ABSTRACT: A financial aid type or program which students may use to pay for tuition or fees associated with the program.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'financialAidEligible';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A financial aid type or program which students may use to pay for tuition
or fees associated with the program.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
