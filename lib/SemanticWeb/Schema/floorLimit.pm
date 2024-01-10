use utf8;

package SemanticWeb::Schema::floorLimit;

# ABSTRACT: A floor limit is the amount of money above which credit card transactions must be authorized.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'floorLimit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A floor limit is the amount of money above which credit card transactions
must be authorized.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
