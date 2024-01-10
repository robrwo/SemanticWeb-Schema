use utf8;

package SemanticWeb::Schema::quarantineGuidelines;

# ABSTRACT: Guidelines about quarantine rules, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'quarantineGuidelines';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Guidelines about quarantine rules, e.g. in the context of a pandemic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
