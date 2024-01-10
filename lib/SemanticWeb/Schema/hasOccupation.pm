use utf8;

package SemanticWeb::Schema::hasOccupation;

# ABSTRACT: The Person's occupation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasOccupation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Person's occupation. For past professions, use Role for expressing
dates.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
