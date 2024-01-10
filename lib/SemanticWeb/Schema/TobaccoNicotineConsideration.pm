use utf8;

package SemanticWeb::Schema::TobaccoNicotineConsideration;

# ABSTRACT: Item contains tobacco and/or nicotine

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'TobaccoNicotineConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Item contains tobacco and/or nicotine, for example cigars, cigarettes,
chewing tobacco, e-cigarettes, or hookahs.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
