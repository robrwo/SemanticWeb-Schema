use utf8;

package SemanticWeb::Schema::OneTimePayments;

# ABSTRACT: OneTimePayments: this is a benefit for one-time payments for individuals.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OneTimePayments';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

OneTimePayments: this is a benefit for one-time payments for individuals.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
