use utf8;

package SemanticWeb::Schema::accountMinimumInflow;

# ABSTRACT: A minimum amount that has to be paid in every month.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accountMinimumInflow';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A minimum amount that has to be paid in every month.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
