use utf8;

package SemanticWeb::Schema::UKNonprofitType;

# ABSTRACT: UKNonprofitType: Non-profit organization type originating from the United Kingdom.

use Moo;

extends qw/ SemanticWeb::Schema::NonprofitType /;


use MooX::JSON_LD 'UKNonprofitType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

UKNonprofitType: Non-profit organization type originating from the United
Kingdom.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NonprofitType>

=cut

1;
