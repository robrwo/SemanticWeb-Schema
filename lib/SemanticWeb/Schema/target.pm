use utf8;

package SemanticWeb::Schema::target;

# ABSTRACT: Indicates a target EntryPoint

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'target';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a target EntryPoint, or url, for an Action.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
