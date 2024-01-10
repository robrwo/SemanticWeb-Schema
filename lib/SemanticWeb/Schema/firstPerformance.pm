use utf8;

package SemanticWeb::Schema::firstPerformance;

# ABSTRACT: The date and place the work was first performed.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'firstPerformance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date and place the work was first performed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
