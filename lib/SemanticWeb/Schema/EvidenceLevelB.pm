use utf8;

package SemanticWeb::Schema::EvidenceLevelB;

# ABSTRACT: Data derived from a single randomized trial

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EvidenceLevelB';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Data derived from a single randomized trial, or nonrandomized studies.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
