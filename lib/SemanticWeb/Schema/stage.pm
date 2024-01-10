use utf8;

package SemanticWeb::Schema::stage;

# ABSTRACT: The stage of the condition, if applicable.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'stage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The stage of the condition, if applicable.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
