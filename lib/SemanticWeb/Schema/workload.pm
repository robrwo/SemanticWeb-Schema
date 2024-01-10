use utf8;

package SemanticWeb::Schema::workload;

# ABSTRACT: Quantitative measure of the physiologic output of the exercise; also referred to as energy expenditure.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'workload';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Quantitative measure of the physiologic output of the exercise; also
referred to as energy expenditure.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
