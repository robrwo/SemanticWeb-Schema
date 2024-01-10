use utf8;

package SemanticWeb::Schema::measurementQualifier;

# ABSTRACT: Provides additional qualification to an observation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'measurementQualifier';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Provides additional qualification to an observation. For example, a GDP
observation measures the Nominal value.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
