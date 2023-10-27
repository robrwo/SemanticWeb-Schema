use utf8;

package SemanticWeb::Schema::TheaterGroup;

# ABSTRACT: A theater group or company

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::PerformingGroup /;


use MooX::JSON_LD 'TheaterGroup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A theater group or company, for example, the Royal Shakespeare Company or
Druid Theatre.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PerformingGroup>

=cut

1;
