use utf8;

package SemanticWeb::Schema::PercutaneousProcedure;

# ABSTRACT: A type of medical procedure that involves percutaneous techniques

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PercutaneousProcedure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A type of medical procedure that involves percutaneous techniques, where
access to organs or tissue is achieved via needle-puncture of the skin. For
example, catheter-based procedures like stent delivery.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
