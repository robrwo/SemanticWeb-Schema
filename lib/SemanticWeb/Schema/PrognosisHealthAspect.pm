use utf8;

package SemanticWeb::Schema::PrognosisHealthAspect;

# ABSTRACT: Typical progression and happenings of life course of the topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PrognosisHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Typical progression and happenings of life course of the topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
