use utf8;

package SemanticWeb::Schema::legislationApplies;

# ABSTRACT: Indicates that this legislation (or part of a legislation) somehow transfers another legislation in a different legislative context

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationApplies';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>Indicates that this legislation (or part of a legislation) somehow
transfers another legislation in a different legislative context. This is
an informative link, and it has no legal value. For legally-binding links
of transposition, use the <a
href="/legislationTransposes">legislationTransposes</a> property. For
example an informative consolidated law of a European Union's member state
"applies" the consolidated version of the European Directive implemented in
it.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
