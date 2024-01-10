use utf8;

package SemanticWeb::Schema::gracePeriod;

# ABSTRACT: The period of time after any due date that the borrower has to fulfil its obligations before a default (failure to pay) is deemed to have occurred.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gracePeriod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The period of time after any due date that the borrower has to fulfil its
obligations before a default (failure to pay) is deemed to have occurred.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
