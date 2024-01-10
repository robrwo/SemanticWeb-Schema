use utf8;

package SemanticWeb::Schema::expressedIn;

# ABSTRACT: Tissue

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'expressedIn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Tissue, organ, biological sample, etc in which activity of this gene has
been observed experimentally. For example brain, digestive system.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
