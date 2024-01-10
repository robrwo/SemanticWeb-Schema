use utf8;

package SemanticWeb::Schema::applicationDeadline;

# ABSTRACT: The date at which the program stops collecting applications for the next enrollment cycle.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'applicationDeadline';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date at which the program stops collecting applications for the next
enrollment cycle.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
