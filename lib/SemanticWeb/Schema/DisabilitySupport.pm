use utf8;

package SemanticWeb::Schema::DisabilitySupport;

# ABSTRACT: DisabilitySupport: this is a benefit for disability support.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'DisabilitySupport';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

DisabilitySupport: this is a benefit for disability support.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
