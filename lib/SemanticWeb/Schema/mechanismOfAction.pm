use utf8;

package SemanticWeb::Schema::mechanismOfAction;

# ABSTRACT: The specific biochemical interaction through which this drug or supplement produces its pharmacological effect.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mechanismOfAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The specific biochemical interaction through which this drug or supplement
produces its pharmacological effect.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
